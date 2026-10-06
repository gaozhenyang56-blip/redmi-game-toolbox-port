.class public Lcom/miui/gamebooster/ui/DndSettingsFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ll8/e;
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/DndSettingsFragment$a;
    }
.end annotation


# instance fields
.field private a:Ll8/f;

.field private b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private c:Lcom/miui/gamebooster/widget/ValueSettingItemView;

.field private d:Lcom/miui/gamebooster/widget/ValueSettingItemView;

.field private e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private f:Lcom/miui/gamebooster/ui/DndSettingsFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/ValueSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->c:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/DndSettingsFragment;)Lcom/miui/gamebooster/widget/ValueSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->d:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    return-object p0
.end method

.method private f0()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/DndSettingsFragment$a;-><init>(Lcom/miui/gamebooster/ui/DndSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->f:Lcom/miui/gamebooster/ui/DndSettingsFragment$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->a:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 2

    const v0, 0x7f0b04c6

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b03c6

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->c:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b04b1

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->d:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->d:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, La8/b1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0b0649

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {}, La8/g0;->n0()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    invoke-static {}, La8/g0;->j0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->d:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, La8/g0;->d0()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, La8/s;->a(ZLandroid/app/Activity;)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->w(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lm6/a;->R(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->p(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->c:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->a:Ll8/f;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;

    invoke-direct {p1}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;-><init>()V

    invoke-interface {v0, p1}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->t()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->d:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->a:Ll8/f;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;-><init>()V

    invoke-interface {p1, v0}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "page_name"

    const-string v1, "speed_set_2"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pos"

    const-string v1, "second_0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gs_event_click"

    invoke-static {v0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01d8

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/DndSettingsFragment;->f:Lcom/miui/gamebooster/ui/DndSettingsFragment$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/DndSettingsFragment;->f0()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    const-string v2, "speed_set_2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gs_event_pv"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
