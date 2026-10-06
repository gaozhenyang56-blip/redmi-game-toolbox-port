.class public Lcom/miui/networkassistant/ui/activity/FirewallActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 10

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v6

    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    const-string v9, "slot_id"

    if-eqz v0, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v2, 0x7f1201d6

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v9, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v2, 0x7f1201d7

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    :goto_0
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInsertedOne()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim1Inserted()Z

    move-result v0

    xor-int/2addr v0, v7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v9, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    const v2, 0x7f120875

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar$d;->setText(I)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v6}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x1020002

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->newInstance()Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    goto :goto_2

    :cond_2
    const-class v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120888

    invoke-static {v2, v3}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    :goto_2
    const/16 v0, 0x1c

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v8, v7}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p1, v8}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    :goto_4
    invoke-virtual {p1, v8}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

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
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lbl/l;->a()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060403

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->initActionBar(Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class p1, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_1
    const-class p1, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0b0776 -> :sswitch_1
        0x7f0b0777 -> :sswitch_0
    .end sparse-switch
.end method
