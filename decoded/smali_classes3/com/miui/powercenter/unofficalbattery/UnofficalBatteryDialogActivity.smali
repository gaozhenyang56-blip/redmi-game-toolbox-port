.class public Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:Landroid/os/CountDownTimer;

.field private c:I

.field private d:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->c:I

    return p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->c:I

    return p1
.end method

.method private h0()V
    .locals 7

    new-instance v6, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;

    const-wide/16 v2, 0x1770

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;-><init>(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;JJ)V

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->b:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->a:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public g0(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    const v0, 0x7f0e03cd

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100103

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$b;-><init>(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12128e

    new-instance v1, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$a;-><init>(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    new-instance v0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$c;-><init>(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lkh/f;->b(Landroid/app/Activity;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->a:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->g0(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->h0()V

    return-void
.end method
