.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$VolunteerRegisterTask;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$RequestVolunteerDataTask;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$URLSpanNoUnderline;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$PrivacyAgreeRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EarthquakeMonitor"


# instance fields
.field private binding:Ljf/e;

.field private mOpenText:Landroid/widget/TextView;

.field private mPrivacyCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->showJoinNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->showShareFragment()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->lambda$onInflateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->lambda$onInflateView$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->lambda$onInflateView$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onInflateView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onInflateView$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mOpenText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onInflateView$2(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getEarthquakeMonitorOrder()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$VolunteerRegisterTask;

    invoke-direct {p1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$VolunteerRegisterTask;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->openEarthquakeMonitor(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_join_volunteer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->showShareFragment()V

    :cond_1
    :goto_0
    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$PrivacyAgreeRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$PrivacyAgreeRunnable;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$1;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    const-string p1, "join"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMonitorClickActionModuleClick(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private showJoinNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->j:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->k:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    iget-object v0, v0, Ljf/e;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showShareFragment()V
    .locals 5

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v3, 0x7f0b0a57

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "eew_monitor_share_fragment"

    invoke-virtual {v2, v3, v0, v4}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    invoke-virtual {v2}, Landroidx/fragment/app/s;->l()I

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->l()I

    :cond_0
    return-void
.end method

.method private stripUnderlines(Landroid/widget/TextView;)V
    .locals 9

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v8, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$URLSpanNoUnderline;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8, v6, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130180

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0e0149

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ljf/e;->a(Landroid/view/View;)Ljf/e;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->binding:Ljf/e;

    const p2, 0x7f0b01ba

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mOpenText:Landroid/widget/TextView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Lx4/h0;->e(Landroid/view/View;F)V

    const p2, 0x7f0b07ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/earthquakewarning/ui/s0;

    invoke-direct {p3, p0}, Lcom/miui/earthquakewarning/ui/s0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0907

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://privacy.mi.com/earthquake_monitor/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const p3, 0x7f1207c3

    invoke-virtual {p0, p3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x3f

    invoke-static {p3, v2}, Landroidx/core/text/e;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->stripUnderlines(Landroid/widget/TextView;)V

    const p2, 0x7f0b08f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/miui/earthquakewarning/ui/t0;

    invoke-direct {p3, p0}, Lcom/miui/earthquakewarning/ui/t0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mOpenText:Landroid/widget/TextView;

    new-instance p3, Lcom/miui/earthquakewarning/ui/u0;

    invoke-direct {p3, p0}, Lcom/miui/earthquakewarning/ui/u0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mOpenText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    new-array p2, v1, [Landroid/view/View;

    iget-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mOpenText:Landroid/widget/TextView;

    aput-object p3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;->mOpenText:Landroid/widget/TextView;

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p3, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-instance p2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$RequestVolunteerDataTask;

    invoke-direct {p2, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment$RequestVolunteerDataTask;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;)V

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p2, "open"

    invoke-static {p2}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMonitorShowActionModuleClick(Ljava/lang/String;)V

    return-object p1
.end method
