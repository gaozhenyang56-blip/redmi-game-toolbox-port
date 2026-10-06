.class public Lcom/miui/permcenter/privacycenter/PrivacySafetyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "force_show_home_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->needHideHomeBackButton()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const v0, 0x7f130008

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miui.intent.action.PRIVACY_SETTINGS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Ldb/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    const-string v3, "miui.intent.action.SECURITY_CENTER_SETTINGS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    const-string v2, "key_load_fragment"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v3

    const-string v5, "FromMainActivity"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v3, :cond_7

    invoke-static {}, Lbl/l;->a()I

    move-result v5

    if-le v5, v1, :cond_5

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060b72

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-ne v2, v4, :cond_6

    invoke-virtual {v3, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v3, p1}, Lmiuix/appcompat/app/ActionBar;->setViewPagerDraggable(Z)V

    invoke-static {v3, p1}, Lcom/miui/permcenter/q;->i(Lmiuix/appcompat/app/ActionBar;I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v1

    const v4, 0x1020002

    invoke-static {v3, v2, v0}, Lcom/miui/permcenter/q;->o(Lmiuix/appcompat/app/ActionBar;IZ)Lmiuix/preference/PreferenceFragment;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :goto_2
    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacySafetyActivity;->d0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacySafetyActivity;->d0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method
