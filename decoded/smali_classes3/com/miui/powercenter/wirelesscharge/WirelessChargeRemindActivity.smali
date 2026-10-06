.class public Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static d:I = 0x1


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:I

.field private c:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->b:I

    return-void
.end method

.method static synthetic d0()I
    .locals 1

    sget v0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->d:I

    return v0
.end method

.method private e0()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->b:I

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$a;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.ACTION_RX_OFFSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->a:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {p0}, Lx4/g;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->g0(Z)V

    return-void
.end method

.method private f0()V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0413

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0728

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "n1_wireless_charge.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const-string v2, "power_images"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->n()V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f130455

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$d;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$d;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;)V

    const v2, 0x7f1204d8

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->c:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$e;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$e;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-static {}, Lgd/c;->K2()V

    return-void
.end method

.method private g0(Z)V
    .locals 6

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e012e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0728

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f0b0dd4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0b0dd3

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const p1, 0x7f1210cc

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    iget p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->b:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const-string p1, "phone_wireless_dark.json"

    goto :goto_0

    :cond_0
    const-string p1, "phone_wireless_light.json"

    goto :goto_0

    :cond_1
    const p1, 0x7f12109f

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->b:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_2

    const-string p1, "flip_wireless_dark.json"

    goto :goto_0

    :cond_2
    const-string p1, "flip_wireless_light.json"

    :goto_0
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const p1, 0x7f0b088f

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->n()V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1218e4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$c;

    invoke-direct {v3, p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$c;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;Landroidx/appcompat/widget/AppCompatCheckBox;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$b;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "reminder_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OUT_OF_POSITION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->e0()V

    goto :goto_0

    :cond_0
    const-string v0, "USE_STAND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->f0()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
