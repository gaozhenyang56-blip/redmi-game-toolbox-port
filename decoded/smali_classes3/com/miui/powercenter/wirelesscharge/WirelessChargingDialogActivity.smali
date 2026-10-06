.class public Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Landroid/content/DialogInterface$OnDismissListener;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnDismissListener;

.field private f:Lmiuix/appcompat/app/AlertDialog;

.field private g:Lmiuix/appcompat/app/AlertDialog;

.field private h:Lmiuix/appcompat/app/AlertDialog;

.field private i:Lmiuix/appcompat/app/AlertDialog;

.field private j:Loe/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)Loe/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->j:Loe/a;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->f0(I)V

    return-void
.end method

.method private f0(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTION_WIRELESS_CHARGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "miui.intent.extra.WIRELESS_CHARGING"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private g0()V
    .locals 7

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wireless_reverse_charging"

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    int-to-float v1, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f121c90

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121c91

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121c8f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->i:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private h0()V
    .locals 6

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f121c92

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f121c93

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->h:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-direct {p0, v1}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->f0(I)V

    return-void
.end method

.method private i0()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f121c95

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121c96

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121c94

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->f:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private j0()V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f121c8e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f121c93

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->g:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-direct {p0, v2}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->f0(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "dialogSelected"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Loe/b;

    invoke-direct {v0, p0}, Loe/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->j:Loe/a;

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$b;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->b:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$c;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->c:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$d;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->d:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$e;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$e;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->e:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->i0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->j0()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->h0()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->g0()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->f:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->g:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->h:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->i:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method
