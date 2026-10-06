.class public Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lse/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->d:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/appmanager/AppManageUtils;->h0(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "enter_from_privacyapps_page"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->c:Z

    if-eqz p1, :cond_1

    const-string v1, "stateNeedPass"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->d:Z

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->c:Z

    if-nez v0, :cond_4

    :cond_3
    iput-boolean v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    new-instance v1, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-direct {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_5
    new-instance p1, Lse/a;

    invoke-direct {p1, p0}, Lse/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->e:Lse/a;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f12002a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0803ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->d:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->e:Lse/a;

    invoke-virtual {v0}, Lse/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "stateNeedPass"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->b:Z

    :cond_0
    return-void
.end method
