.class public Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ll8/e;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;
    }
.end annotation


# instance fields
.field private a:Ll8/f;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private h:I

.field private i:Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h:I

    return-void
.end method

.method static synthetic b0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h:I

    return p1
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method private h0()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;-><init>(Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->i:Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->a:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 3

    const v0, 0x7f0b0bcd

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120925

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b0955

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b09fd

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b081b

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b0dab

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-static {}, La8/g0;->w()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lef/d0;->a()I

    move-result v0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, La8/g0;->l0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h:I

    if-eqz p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h:I

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h:I

    if-gez v1, :cond_1

    iput v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h:I

    :cond_1
    :goto_0
    iget v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h:I

    invoke-static {v1}, Lm6/a;->e0(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v1, :cond_2

    invoke-static {p2}, Lm6/a;->r0(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->q(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v1, :cond_4

    invoke-static {p2}, Lm6/a;->s0(Z)V

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    const-string p1, "android.provider.MiuiSettings$ScreenEffect"

    const-string v1, "GAME_MODE"

    invoke-static {p1, v1}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->u(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lm6/a;->u0(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->y(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lm6/a;->t0(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->x(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_7

    invoke-static {p2}, Lm6/a;->Y(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->D(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->a:Ll8/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ll8/f;->pop()V

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01d9

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

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->i:Lcom/miui/gamebooster/ui/ExperienceSettingsFragment$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/ExperienceSettingsFragment;->h0()V

    return-void
.end method
