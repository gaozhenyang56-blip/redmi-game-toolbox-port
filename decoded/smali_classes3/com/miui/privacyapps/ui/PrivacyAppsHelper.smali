.class public Lcom/miui/privacyapps/ui/PrivacyAppsHelper;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x66

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_0

    invoke-static {p0}, Lx4/y;->m(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    new-instance p1, Lse/a;

    invoke-direct {p1, p0}, Lse/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lse/a;->a()I

    move-result v0

    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v1

    invoke-virtual {v1}, Lc3/d;->l()Z

    move-result v1

    invoke-virtual {p1}, Lse/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x66

    invoke-virtual {p0, p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method
