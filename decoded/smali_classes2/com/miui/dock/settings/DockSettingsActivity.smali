.class public Lcom/miui/dock/settings/DockSettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v0, 0x7f120b30

    invoke-direct {p0, v0}, Lcom/miui/dock/settings/DockSettingsActivity;->e0(I)V

    const v0, 0x7f0e022c

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    return-void
.end method

.method private e0(I)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.gamebooster.action.ACCESS_BEAUTY"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "toast_dock_settings_key"

    invoke-virtual {p1, v1, v0}, La8/y1;->b(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, La8/y1;->h(Ljava/lang/String;I)V

    invoke-static {}, Lx5/p;->z0()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120a9e

    goto :goto_0

    :cond_0
    const p1, 0x7f120a9d

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/dock/settings/DockSettingsActivity;->d0()V

    return-void
.end method
