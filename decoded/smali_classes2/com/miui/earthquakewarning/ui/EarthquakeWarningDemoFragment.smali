.class public final Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;
    }
.end annotation


# instance fields
.field private _binding:Ljf/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private job:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final titles:[I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->titles:[I

    return-void

    :array_0
    .array-data 4
        0x7f120786
        0x7f120787
    .end array-data
.end method

.method public static synthetic a0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->onViewCreated$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    return-object p0
.end method

.method public static final synthetic access$getTitles$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->titles:[I

    return-object p0
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->onViewCreated$lambda$2(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Landroid/view/View;)V

    return-void
.end method

.method private final getBinding()Ljf/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->_binding:Ljf/b;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final onViewCreated$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Landroid/view/View;)V
    .locals 13

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$adapter"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object p2, p2, Ljf/b;->f:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object p2, p2, Ljf/b;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->playWarning()V

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$1;

    invoke-direct {v4, p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;

    invoke-direct {v10, p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$2$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Ltj/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->playCountdown()V

    :goto_0
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$adapter"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->stop()V

    :cond_0
    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->job:Llk/s1;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object p2, p2, Ljf/b;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p0

    iget-object p0, p0, Ljf/b;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method private final playCountdown()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->playGuide1()V

    :cond_0
    return-void
.end method

.method private final playWarning()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->playGuide2()V

    :cond_0
    return-void
.end method

.method private final resetUIStatus()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object v0

    iget-object v0, v0, Ljf/b;->f:Landroid/widget/Button;

    const v1, 0x7f12077f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object v0

    iget-object v0, v0, Ljf/b;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->job:Llk/s1;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
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

.method public final getJob()Llk/s1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->job:Llk/s1;

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

    invoke-static {p1, p2, p3}, Ljf/b;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->_binding:Ljf/b;

    new-instance p1, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p1

    invoke-virtual {p1}, Ljf/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->_binding:Ljf/b;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->release()V

    :cond_0
    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->player:Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->resetUIStatus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

    invoke-direct {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;-><init>()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object p2, p2, Ljf/b;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->g(Landroidx/viewpager2/widget/ViewPager2$i;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object v0, p2, Ljf/b;->d:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0709f5

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0602ad

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0602ae

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v5

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->c(IIIII)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object p2, p2, Ljf/b;->d:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setIndicatorNum(I)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object p2, p2, Ljf/b;->f:Landroid/widget/Button;

    new-instance v0, Lcom/miui/earthquakewarning/ui/k;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/ui/k;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getBinding()Ljf/b;

    move-result-object p2

    iget-object p2, p2, Ljf/b;->c:Landroid/widget/Button;

    new-instance v0, Lcom/miui/earthquakewarning/ui/l;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/ui/l;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setJob(Llk/s1;)V
    .locals 0
    .param p1    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->job:Llk/s1;

    return-void
.end method
