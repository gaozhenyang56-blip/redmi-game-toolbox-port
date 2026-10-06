.class public Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/String; = "miui.intent.action.ACTION_POGO_CONNECTED_STATE"


# instance fields
.field private a:Lmiuix/appcompat/app/AlertDialog;

.field private b:Z

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->b:Z

    new-instance v0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity$a;-><init>(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->k0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->l0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->b:Z

    return p0
.end method

.method static synthetic g0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->b:Z

    return p1
.end method

.method static synthetic h0(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->i0(Z)V

    return-void
.end method

.method private i0(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method private j0()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->c:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic k0(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-ne p2, p1, :cond_1

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lgd/c;->C2(Z)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    return-void
.end method

.method private m0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    const-string v0, "PowerSaveDialogActivity"

    const-string v1, "showDialog: show dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lje/a;

    invoke-direct {v2, p0}, Lje/a;-><init>(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;)V

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1210b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1210b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1212e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lje/b;

    invoke-direct {v3, p0}, Lje/b;-><init>(Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12108f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "channel_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->m0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/powercenter/smartcharge/PowerSaveDialogActivity;->j0()V

    return-void
.end method
