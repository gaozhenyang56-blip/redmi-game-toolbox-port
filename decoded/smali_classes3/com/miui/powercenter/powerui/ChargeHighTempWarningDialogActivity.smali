.class public Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lmiuix/appcompat/app/AlertDialog;

.field private b:Loe/a;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity$a;-><init>(Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e04fe

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Loe/b;

    invoke-direct {v0, p0}, Loe/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->b:Loe/a;

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity$c;-><init>(Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;)V

    const v1, 0x7f1204d8

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity$b;-><init>(Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->b:Loe/a;

    invoke-interface {v0}, Loe/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miui.intent.action.ACTION_ANTI_BURN"

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->c:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargeHighTempWarningDialogActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
