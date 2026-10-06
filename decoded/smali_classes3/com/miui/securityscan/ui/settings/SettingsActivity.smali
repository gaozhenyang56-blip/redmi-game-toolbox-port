.class public Lcom/miui/securityscan/ui/settings/SettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const-string v0, "miui.intent.action.APP_SETTINGS"

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isUninstalledDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onActivityCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.APP_SETTINGS"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120097

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    new-instance v1, Lcom/miui/securityscan/ui/settings/SettingsFragment;

    invoke-direct {v1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0, p0, p1}, Lcom/miui/common/base/e;->c(Lcom/miui/common/base/BaseActivity;Landroid/os/Bundle;)V

    return-void
.end method
