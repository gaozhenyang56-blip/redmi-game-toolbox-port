.class public Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;
.super Lcom/miui/common/base/BaseAcquireCtaActivity;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field private c:Lmiuix/appcompat/app/ActionBar;

.field private d:Landroidx/appcompat/app/ActionBar$d;

.field private e:Landroidx/appcompat/app/ActionBar$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;-><init>()V

    const-string v0, "sim_1"

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->a:Ljava/lang/String;

    const-string v0, "sim_2"

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->b:Ljava/lang/String;

    return-void
.end method

.method private d0()V
    .locals 14

    invoke-static {}, Lm2/f;->t()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f12002b

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-static {p0, v4}, Lm2/f;->D(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lm2/f;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {p0, v6}, Lm2/f;->D(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Lm2/f;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v6, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const v4, 0x7f1217ea

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->d:Landroidx/appcompat/app/ActionBar$d;

    invoke-static {}, Lm2/g;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v3

    const v4, 0x7f1217eb

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->e:Landroidx/appcompat/app/ActionBar$d;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->d:Landroidx/appcompat/app/ActionBar$d;

    const-class v5, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v3, "sim_1"

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    iget-object v8, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    iget-object v10, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->e:Landroidx/appcompat/app/ActionBar$d;

    const-class v11, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v9, "sim_2"

    invoke-virtual/range {v8 .. v13}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "extra_settings_title_res"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-direct {v2}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :goto_4
    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->c:Lmiuix/appcompat/app/ActionBar;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->d0()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/base/BaseAcquireCtaActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x12c

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->init()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;->acquireCTAPermissionsForResult()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AntiSpamNewSettingsActivity;->init()V

    return-void
.end method
