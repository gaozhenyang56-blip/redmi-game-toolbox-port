.class public Lcom/miui/securitycenter/activity/ThirdDesktopAlertActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/securitycenter/activity/ThirdDesktopAlertActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/activity/ThirdDesktopAlertActivity;->l0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/securitycenter/activity/ThirdDesktopAlertActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securitycenter/activity/ThirdDesktopAlertActivity;->k0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic k0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f1219e3

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1219e1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Lcom/miui/securitycenter/activity/ThirdDesktopAlertActivity;)V

    const v1, 0x7f1219e2

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lff/c;

    invoke-direct {v0, p0}, Lff/c;-><init>(Lcom/miui/securitycenter/activity/ThirdDesktopAlertActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected f0()V
    .locals 0

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    return-void
.end method
