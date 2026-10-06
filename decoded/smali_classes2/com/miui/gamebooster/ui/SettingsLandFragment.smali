.class public Lcom/miui/gamebooster/ui/SettingsLandFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/ui/SettingsTabFragment$a;
.implements Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->d:I

    return-void
.end method

.method private b0(I)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string v3, "all_setting"

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const-string v3, "game_booster"

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const-string v3, "interference_off"

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const-string v3, "advanced_setting"

    goto :goto_0

    :cond_3
    const-string v3, ""

    :goto_0
    invoke-static {v3}, Lcom/miui/gamebooster/utils/a$n;->I(Ljava/lang/String;)V

    iget v4, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->d:I

    if-gez v4, :cond_4

    :goto_1
    iput p1, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->c:J

    return-void

    :cond_4
    if-nez v4, :cond_5

    const-string v3, "all_setting_page"

    goto :goto_2

    :cond_5
    if-ne v4, v2, :cond_6

    const-string v3, "performance_power_page"

    goto :goto_2

    :cond_6
    if-ne v4, v1, :cond_7

    const-string v3, "anti_interference_page"

    goto :goto_2

    :cond_7
    if-ne v4, v0, :cond_8

    const-string v3, "advanced_setting_page"

    :cond_8
    :goto_2
    iget-wide v0, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->c:J

    invoke-static {v3, v0, v1}, Lcom/miui/gamebooster/utils/a$n;->H(Ljava/lang/String;J)V

    goto :goto_1
.end method


# virtual methods
.method public Z(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0b3e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Ll8/g;

    if-eqz v1, :cond_0

    check-cast v0, Ll8/g;

    invoke-interface {v0, p1}, Ll8/g;->k(Z)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/gamebooster/ui/DndSettingsFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/DndSettingsFragment;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/ui/GlobalSettingsFragment;->q0(Lcom/miui/gamebooster/ui/GlobalSettingsFragment$c;)V

    :goto_0
    invoke-static {v0}, Lcom/miui/gamebooster/view/StackFragment;->b0(Lmiuix/appcompat/app/Fragment;)Lcom/miui/gamebooster/view/StackFragment;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v1

    const v2, 0x7f0b027f

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v1}, Landroidx/fragment/app/s;->k()I

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SettingsLandFragment;->b0(I)V

    return-void
.end method

.method protected initView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0b3e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/SettingsTabFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/ui/SettingsTabFragment;->e0(Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->b:J

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->a:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    iget-wide v0, p0, Lcom/miui/gamebooster/ui/SettingsLandFragment;->b:J

    const-string p1, "turbo_setting_page"

    invoke-static {p1, v0, v1}, Lcom/miui/gamebooster/utils/a$n;->H(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01e0

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
