.class public Lcom/miui/powercenter/PowerMainActivity;
.super Lcom/miui/common/base/ui/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/PowerMainActivity$b;,
        Lcom/miui/powercenter/PowerMainActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/powercenter/batteryhistory/l;

.field private b:Z

.field private c:Lmiuix/appcompat/app/ActionBar;

.field private d:Lcom/miui/powercenter/PowerMainActivity$b;

.field public e:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragmentActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/PowerMainActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/PowerMainActivity$b;-><init>(Lcom/miui/powercenter/PowerMainActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerMainActivity;->d:Lcom/miui/powercenter/PowerMainActivity$b;

    return-void
.end method


# virtual methods
.method public d0()Lcom/miui/powercenter/batteryhistory/l;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerMainActivity;->a:Lcom/miui/powercenter/batteryhistory/l;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerMainActivity;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lme/w;->z0(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/powercenter/PowerMainActivity;->e:Landroid/content/res/Configuration;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "overried_transition"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/PowerMainActivity;->b:Z

    new-instance p1, Lcom/miui/powercenter/batteryhistory/l;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/batteryhistory/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/PowerMainActivity;->a:Lcom/miui/powercenter/batteryhistory/l;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/l;->f()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/PowerMainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->needHideHomeBackButton()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/PowerMainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    new-instance p1, Lcom/miui/powercenter/PowerMainActivity$a;

    iget-object v0, p0, Lcom/miui/powercenter/PowerMainActivity;->d:Lcom/miui/powercenter/PowerMainActivity$b;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/powercenter/PowerMainActivity$a;-><init>(Landroid/os/Handler;ZLandroid/content/Intent;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lgh/b;->q(Landroid/content/Context;)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/powercenter/PowerMainActivity;->e:Landroid/content/res/Configuration;

    iget-object p1, p0, Lcom/miui/powercenter/PowerMainActivity;->c:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080ddb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    return-void
.end method

.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-direct {v0}, Lcom/miui/powercenter/PowerSaveMainFragment;-><init>()V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerMainActivity;->a:Lcom/miui/powercenter/batteryhistory/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/l;->g()V

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/p;->b()V

    return-void
.end method
