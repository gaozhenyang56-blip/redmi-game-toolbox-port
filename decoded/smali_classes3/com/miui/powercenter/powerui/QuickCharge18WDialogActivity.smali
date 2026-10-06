.class public Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"


# instance fields
.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity$a;-><init>(Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic i0(Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;->m0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;->p0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic k0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;->o0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;->n0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic m0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private static synthetic n0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private static synthetic o0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lme/j;->q()Z

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic p0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    const v0, 0x7f120fd9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120fd8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lde/p;

    invoke-direct {v0, p0}, Lde/p;-><init>(Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lde/q;

    invoke-direct {v0}, Lde/q;-><init>()V

    const v1, 0x7f120499

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lde/r;

    invoke-direct {v0}, Lde/r;-><init>()V

    const v1, 0x7f120f49

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lde/s;

    invoke-direct {v0, p0}, Lde/s;-><init>(Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "miui.intent.action.MIUI_PC_BATTERY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;->d:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

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

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
