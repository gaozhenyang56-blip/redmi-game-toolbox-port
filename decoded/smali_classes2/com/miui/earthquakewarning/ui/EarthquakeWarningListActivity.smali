.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mTabView1:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private mTabView2:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

.field private mWarningAllBtn:Landroid/widget/Button;

.field private mWarningReceiveBtn:Landroid/widget/Button;

.field private final myClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/earthquakewarning/ui/a0;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/a0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->myClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mTabView1:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mTabView2:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningAllBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningReceiveBtn:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic d0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0b01cf

    if-ne v0, v3, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningAllBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningReceiveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01d0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningAllBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningReceiveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

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
    .locals 9

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0141

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "CITY_NAME"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mCityName:Ljava/lang/String;

    :cond_1
    const v1, 0x7f0b038c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0b0701

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0b0702

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0b03e1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/miuixbasewidget/widget/FilterSortView2;

    const v5, 0x7f0b0d9c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/earthquakewarning/view/ControlledViewPager;

    iput-object v5, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;

    invoke-direct {v6}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListFragment;-><init>()V

    iget-object v7, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mCityName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mCityName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;-><init>()V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v6, 0xa

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-lt v0, v6, :cond_3

    const p1, 0x7f120793

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mTabView1:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070979

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mTabView1:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    new-instance v0, Lcom/miui/earthquakewarning/ui/b0;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/b0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f120790

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mTabView2:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    new-instance v0, Lcom/miui/earthquakewarning/ui/c0;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/c0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mTabView1:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {v4, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0b01cf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningAllBtn:Landroid/widget/Button;

    const v0, 0x7f0b01d0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningReceiveBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningAllBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningReceiveBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningAllBtn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mWarningReceiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$MyPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0, v5}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$MyPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    invoke-virtual {p1, v8}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->mViewPager:Lcom/miui/earthquakewarning/view/ControlledViewPager;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;

    invoke-direct {v0, p0, v4}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;Lmiuix/miuixbasewidget/widget/FilterSortView2;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    invoke-static {}, Lx4/a0;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071832

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
