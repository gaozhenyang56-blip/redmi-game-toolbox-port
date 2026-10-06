.class public Lcom/miui/powercenter/powerui/PowerPortDampActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/powercenter/powerui/PowerPortDampActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/powerui/PowerPortDampActivity;->k0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/powercenter/powerui/PowerPortDampActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powerui/PowerPortDampActivity;->l0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic k0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lod/c;->n(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "supportDFSUi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1212ad

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1212ac

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    const v2, 0x7f1212e2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f121087

    new-instance v2, Lde/m;

    invoke-direct {v2, p0}, Lde/m;-><init>(Lcom/miui/powercenter/powerui/PowerPortDampActivity;)V

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :goto_0
    new-instance v1, Lde/n;

    invoke-direct {v1, p0}, Lde/n;-><init>(Lcom/miui/powercenter/powerui/PowerPortDampActivity;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDialog supportDFSUi:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerPortDampActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected f0()V
    .locals 0

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
