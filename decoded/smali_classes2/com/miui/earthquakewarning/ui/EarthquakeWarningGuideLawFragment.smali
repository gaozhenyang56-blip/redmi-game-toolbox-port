.class public final Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private _binding:Ljf/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->initView$lambda$3(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->initView$lambda$4(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;Landroid/view/View;)V

    return-void
.end method

.method private final getBinding()Ljf/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->_binding:Ljf/d;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final initView()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object v2

    iget-object v2, v2, Ljf/d;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f120775

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v6, "&region="

    const-string v7, "?lang="

    if-eqz v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f120784

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {p0, v5, v9}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x3f

    invoke-static {v3, v5}, Landroidx/core/text/e;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object v2

    iget-object v2, v2, Ljf/d;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/miui/earthquakewarning/Constants;->URL_EARTHQUAKE_WARNING_PRIVACY:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2f

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1219a5

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-virtual {p0, v3, v9}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.terms\u2026ons_content, privacyLink)"

    invoke-static {v0, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10}, Landroidx/core/text/e;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object v0

    iget-object v0, v0, Ljf/d;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.ew_gl\u2026vice_scope_external_link)"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const v1, 0x7f120785

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.ew_gu\u2026statement_text_new, link)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Landroidx/core/text/e;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object v0

    iget-object v0, v0, Ljf/d;->b:Landroid/widget/Button;

    new-instance v1, Lcom/miui/earthquakewarning/ui/o;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/o;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object v0

    iget-object v0, v0, Ljf/d;->h:Landroid/widget/Button;

    new-instance v1, Lcom/miui/earthquakewarning/ui/p;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/p;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initView$lambda$3(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;Landroid/view/View;)V
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

.method private static final initView$lambda$4(Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;Landroid/view/View;)V
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

    invoke-static {p1, p2, p3}, Ljf/d;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->_binding:Ljf/d;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->initView()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object p1

    invoke-virtual {p1}, Ljf/d;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object v1

    iget-object v1, v1, Ljf/d;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinatedScrollView(Landroid/view/View;)V

    :cond_1
    iput-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->_binding:Ljf/d;

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

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideLawFragment;->getBinding()Ljf/d;

    move-result-object p2

    iget-object p2, p2, Ljf/d;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->registerCoordinatedScrollView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
