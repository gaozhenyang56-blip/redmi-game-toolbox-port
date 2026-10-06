.class public Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lc3/d;

.field public c:Z

.field private d:Ld3/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->c:Z

    return-void
.end method


# virtual methods
.method public d0()Ld3/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    return-object v0
.end method

.method public e0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld3/b;->g(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ld3/b;->g(Ljava/lang/Boolean;)V

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    const-string p2, "is_click_lock_all_apps"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->c:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_data"

    const-string v1, "ChooseAppToLock"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p1, "settings"

    invoke-static {p1}, La3/a;->n(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Ld3/b;->a(Landroidx/lifecycle/y0;)Ld3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    const-string v2, "not_home_start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ld3/b;->g(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->b:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->l()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ld3/b;->g(Ljava/lang/Boolean;)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const v1, 0x7f12020a

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "AppLockManageFragment"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v2, 0x1020002

    new-instance v3, Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {v3}, Lcom/miui/applicationlock/AppLockManageFragment;-><init>()V

    invoke-virtual {p1, v2, v3, v1}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "first_applist_new"

    goto :goto_0

    :cond_3
    const-string p1, "applist"

    :goto_0
    invoke-static {p1}, La3/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method protected onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f12002a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0803ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ld3/b;->f(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->b:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->b:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    invoke-virtual {v1}, Ld3/b;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lx4/t;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    invoke-virtual {v1}, Ld3/b;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ld3/b;->g(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    invoke-virtual {v1}, Ld3/b;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d:Ld3/b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ld3/b;->g(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
