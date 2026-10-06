.class public Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil$AllowNetworkDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowNetwork()Z
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    return v0
.end method

.method public static showAllowNetworkByAssistant(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->showAllowNetworkDialog(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static showAllowNetworkDialog(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil$AllowNetworkDialogListener;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil$AllowNetworkDialogListener;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1215d0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x7f1215cf

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x104000a

    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static showSecurityCenterAllowNetwork(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->showAllowNetworkDialog(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
