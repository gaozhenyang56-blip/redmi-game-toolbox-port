.class public Lcom/miui/permcenter/detection/PrivacyPermissionsSetActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0(I)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const p1, 0x7f1214eb

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const p1, 0x7f1214c0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private e0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-static {}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->g0()Lmiuix/appcompat/app/Fragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    return-void
.end method

.method private f0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-static {}, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->d0()Lmiuix/appcompat/app/Fragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "privacyType"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyPermissionsSetActivity;->d0(I)V

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyPermissionsSetActivity;->f0()V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyPermissionsSetActivity;->e0()V

    :cond_1
    :goto_0
    return-void
.end method
