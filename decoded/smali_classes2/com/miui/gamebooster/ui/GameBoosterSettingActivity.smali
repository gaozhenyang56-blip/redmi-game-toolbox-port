.class public Lcom/miui/gamebooster/ui/GameBoosterSettingActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    return-void
.end method

.method private f0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingActivity;->f0()V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01ee

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingActivity;->f0()V

    const/4 p1, 0x1

    return p1
.end method
