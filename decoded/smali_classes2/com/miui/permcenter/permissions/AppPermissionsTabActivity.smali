.class public Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;,
        Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lxm/a;

.field private c:Lmiuix/springback/view/SpringBackLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->a:I

    return-void
.end method

.method static synthetic d0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->j0(I)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->a:I

    return p0
.end method

.method static synthetic f0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->a:I

    return p1
.end method

.method static synthetic g0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->a:I

    return v0
.end method

.method private h0()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldb/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j0(I)V
    .locals 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "key_upgrade_tip"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    const/4 p1, 0x3

    new-array v9, p1, [Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    new-instance v2, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    const v3, 0x7f080e5e

    const v4, 0x7f121177

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;III)V

    aput-object v2, v9, v1

    new-instance v2, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    const v3, 0x7f080e5f

    const v4, 0x7f121178

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;III)V

    aput-object v2, v9, v0

    const/4 v0, 0x2

    new-instance v2, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    const v3, 0x7f080e60

    const v4, 0x7f12117a

    const v5, 0x7f121176

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;III)V

    aput-object v2, v9, v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0434

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121179

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120478

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v8

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$b;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;)V

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v1, -0x1

    invoke-virtual {v8, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0b08d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;

    invoke-direct {v2, p0, p0, v9}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$f;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;Landroid/content/Context;[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;)V

    invoke-virtual {v10, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    const v2, 0x7f0b08d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->a:I

    invoke-virtual {v0, p1, v2}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->e(II)V

    new-instance p1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$c;

    move-object v2, p1

    move-object v3, p0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$c;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;Landroidx/viewpager/widget/ViewPager;Lcom/miui/privacyapps/view/ViewPagerIndicator;Landroid/widget/Button;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;

    invoke-direct {p1, p0, v0, v9, v1}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;Lcom/miui/privacyapps/view/ViewPagerIndicator;[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;Landroid/widget/Button;)V

    invoke-virtual {v10, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method


# virtual methods
.method public i0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->b:Lxm/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lxm/a;->setDraggable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->c:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_navi_item"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    sget-object v2, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->l:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v1

    const v3, 0x7f120087

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v3

    const-class v4, Lcom/miui/permcenter/permissions/AppPermissionsFragment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    invoke-virtual {v7}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v1

    const v2, 0x7f120091

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v3

    const-class v4, Lcom/miui/permcenter/permissions/PermissionsFragment;

    const-string v2, "PermissionsFragment"

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    const v1, 0x7f0b0d8d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lxm/a;

    iput-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->b:Lxm/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->b:Lxm/a;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    iput-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->c:Lmiuix/springback/view/SpringBackLayout;

    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {v7}, Landroidx/appcompat/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {v7, v0}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->h0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->j0(I)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->h0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key_upgrade_tip"

    invoke-static {v0, p1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$a;

    invoke-direct {p1, p0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$a;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;)V

    invoke-virtual {v7, p1}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "AppPermTabActivity"

    const-string v4, "windowDismissed"

    invoke-static {v3, v0, v4, v2, v1}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
